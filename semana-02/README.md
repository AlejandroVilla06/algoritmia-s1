# Algoritmia S2 - Lógica y decisiones

## ValidarRegistro.psc

**Regla:** te registras si tienes 14 años o más Y aceptas los términos.

| EDAD >= 14 | ACEPTA | RESULTADO |
|:---:|:---:|:---:|
| V | V | Registro |
| V | F | No |
| F | V | No |
| F | F | No |

### Prueba de escritorio

| edad | respuesta | edad >= 14 | respuesta = "S" | Condición | Salida |
|------|-----------|:---:|:---:|:---:|--------|
| 20 | s | V | V | V | Registro exitoso |
| 13 | S | F | V | F | No puedes registrarte |
| 16 | N | V | F | F | No puedes registrarte |

---

## ValidarEdad.psc

**Regla:** la edad es válida si `edad >= 0 Y edad <= 120`.

| edad >= 0 | edad <= 120 | RESULTADO |
|:---:|:---:|:---:|
| V | V | Válida |
| V | F | No válida |
| F | V | No válida |
| F | F | No válida |

### Prueba de escritorio

| edad | edad >= 0 | edad <= 120 | Condición | Salida |
|------|:---:|:---:|:---:|--------|
| 25 | V | V | V | Edad válida |
| -5 | F | V | F | Edad no válida |
| 150 | V | F | F | Edad no válida |

---

## Parqueadero.psc

**Reglas:**
1. Carro: $4.000/hora o fracción. Moto: $2.000/hora o fracción.
2. Primeros 15 minutos gratis.
3. Cobro máximo del día: $30.000.
4. Con factura del centro comercial: paga la mitad (después del máximo).
5. Tipo inválido o minutos negativos: error.

### Prueba de escritorio

| tipo | minutos | factura | tarifa | horas | valor bruto | tope | factura? | Salida |
|------|---------|---------|--------|-------|-------------|------|----------|--------|
| 1 | 10 | N | 4000 | — | 0 | — | — | $0 |
| 1 | 61 | N | 4000 | 2 | 8000 | 8000 | No | $8000 |
| 2 | 30 | N | 2000 | 1 | 2000 | 2000 | No | $2000 |
| 1 | 480 | N | 4000 | 8 | 32000 | 30000 | No | $30000 |
| 1 | 480 | S | 4000 | 8 | 32000 | 30000 | Sí | $15000 |
| 3 | 60 | N | 0 | — | — | — | — | Tipo no válido |
| 1 | -10 | N | — | — | — | — | — | Minutos negativos |

---

## Semaforo.psc

**Regla:** según las unidades en inventario:
- `< 0` → Error
- `= 0` → Rojo: agotado
- `1 a 10` → Amarillo: pedir
- `> 10` → Verde: todo bien

### Prueba de escritorio

| unidades | Salida |
|----------|--------|
| -3 | Error: las unidades no pueden ser negativas |
| 0 | Rojo: agotado |
| 5 | Amarillo: pedir |
| 10 | Amarillo: pedir |
| 15 | Verde: todo bien |

---

## Bisiesto.psc

**Regla:** un año es bisiesto si `(divisible entre 4 Y NO divisible entre 100) O divisible entre 400`.

| ÷4 | ÷100 | ÷400 | ¿BISIESTO? |
|:---:|:---:|:---:|:---:|
| V | F | F | Sí |
| V | V | F | No |
| V | V | V | Sí |
| F | F | F | No |

### Prueba de escritorio

| anio | MOD 4 = 0 | MOD 100 <> 0 | MOD 400 = 0 | Condición | Salida |
|------|:---:|:---:|:---:|:---:|--------|
| 2024 | V | V | F | V | 2024 es bisiesto |
| 1900 | V | F | F | F | 1900 no es bisiesto |
| 2000 | V | F | V | V | 2000 es bisiesto |
| 2026 | F | V | F | F | 2026 no es bisiesto |
